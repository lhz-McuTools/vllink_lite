/*****************************************************************************
 *   Copyright(C)2009-2019 by VSF Team                                       *
 *                                                                           *
 *  Licensed under the Apache License, Version 2.0 (the "License");          *
 *  you may not use this file except in compliance with the License.         *
 *  You may obtain a copy of the License at                                  *
 *                                                                           *
 *     http://www.apache.org/licenses/LICENSE-2.0                            *
 *                                                                           *
 *  Unless required by applicable law or agreed to in writing, software      *
 *  distributed under the License is distributed on an "AS IS" BASIS,        *
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. *
 *  See the License for the specific language governing permissions and      *
 *  limitations under the License.                                           *
 *                                                                           *
 ****************************************************************************/

/*============================ INCLUDES ======================================*/
#include "../vsf_tgui_cfg.h"

#if VSF_USE_TINY_GUI == ENABLED && VSF_TGUI_CFG_SUPPORT_TEXT_LIST == ENABLED

#define __VSF_TGUI_CONTROLS_TEXT_LIST_CLASS_IMPLEMENT
#define __VK_TGUI_CONTROLS_SLIDER_CLASS_INHERIT

declare_class(vsf_tgui_t)
#include "./vsf_tgui_text_list.h"
#include "../view/vsf_tgui_v.h"

/*============================ MACROS ========================================*/
/*============================ MACROFIED FUNCTIONS ===========================*/
/*============================ TYPES =========================================*/
/*============================ GLOBAL VARIABLES ==============================*/
/*============================ PROTOTYPES ====================================*/

extern
int_fast16_t __vk_tgui_label_get_line_height( const vsf_tgui_label_t* ptLabel);

/*============================ LOCAL VARIABLES ===============================*/

static const i_tgui_control_methods_t c_tVTextList= {
#if !defined(__STDC_VERSION__) || __STDC_VERSION__ < 199901L
    {
        (vsf_tgui_method_t *)&vsf_tgui_text_list_v_init,
        (vsf_tgui_method_t *)&vsf_tgui_text_list_v_depose,
        (vsf_tgui_v_method_render_t *)&vsf_tgui_text_list_v_rendering,
        (vsf_tgui_v_method_render_t *)&vsf_tgui_text_list_v_post_rendering,
        (vsf_tgui_method_t *)&vsf_tgui_text_list_v_update
    },
    (vsf_tgui_method_t*)&vk_tgui_text_list_init,
    (vsf_tgui_method_t *)&vk_tgui_text_list_update
#else
    .tView = {
        .Init =     (vsf_tgui_method_t *)&vsf_tgui_text_list_v_init,
        .Depose =   (vsf_tgui_method_t *)&vsf_tgui_text_list_v_depose,
        .Render =   (vsf_tgui_v_method_render_t *)&vsf_tgui_text_list_v_rendering,
        .ContainerPostRender = (vsf_tgui_v_method_render_t *)&vsf_tgui_text_list_v_post_rendering,
        .Update =   (vsf_tgui_method_t *)&vsf_tgui_text_list_v_update,
    },
    .Init =     (vsf_tgui_method_t *)&vk_tgui_text_list_init,
    .Update =   (vsf_tgui_method_t *)&vk_tgui_text_list_update,
#endif
};



/*============================ IMPLEMENTATION ================================*/

static int_fast16_t __vk_tgui_text_list_get_real_container_x(
                                                const vsf_tgui_text_list_t* ptTextList,
                                                int_fast16_t iTargetLineX)
{

    __vsf_tgui_control_core_t *ptCore =
        vsf_tgui_control_get_core(
            (const vsf_tgui_control_t *)&(ptTextList->tList.tContent));
    int_fast16_t iContentHeight = ptCore->tRegion.tSize.iHeight;

    while (iTargetLineX < 0) {
        iTargetLineX += iContentHeight;
    }

    while (iTargetLineX >= iContentHeight) {
        iTargetLineX -= iContentHeight;
    }

    return iTargetLineX;
}


static int_fast16_t __vk_tgui_text_list_calculate_container_x_adjust(
                                                    int_fast16_t iLineHeight,
                                                    int_fast16_t iListHeight
                                                )
{
    return  (iListHeight - iLineHeight) / 2;
}

static int_fast16_t __vk_tgui_text_list_calculate_container_x_height(
                                                    int_fast16_t iLineHeight,
                                                    int_fast16_t iLineSelect,
                                                    int_fast8_t chLineSpace
                                                )
{
    return  (iLineHeight + chLineSpace) * iLineSelect;
}



static int_fast16_t __vk_tgui_text_list_calculate_container_x(
                                                    int_fast16_t iLineHeight,
                                                    int_fast16_t iLineSelect,
                                                    int_fast16_t iListHeight,
                                                    int_fast8_t chLineSpace
                                                )
{
    int_fast16_t iResult = 0;

    iResult = __vk_tgui_text_list_calculate_container_x_height (iLineHeight, iLineSelect, chLineSpace);
    iResult -= __vk_tgui_text_list_calculate_container_x_adjust(iLineHeight, iListHeight);

    return iResult;
}

static void __vk_tgui_text_list_update_line_selection(
                                                    vsf_tgui_text_list_t* ptTextList,
                                                    int_fast16_t iLineSelect)
{
    uint_fast16_t hwLineCount = ptTextList->hwLineCount;
    int_fast16_t iYOffset = 0;


    if (0 == hwLineCount) {
        return;
    }

    while(iLineSelect >= (int_fast16_t)hwLineCount) {
        iLineSelect -= hwLineCount;
    }

    while(iLineSelect < 0) {
        iLineSelect += hwLineCount;
    }

#if VSF_TGUI_CFG_TEXT_LIST_SUPPORT_SLIDE == ENABLED

    do {
        int_fast16_t iLineDif = ptTextList->iLineSelect - ptTextList->iOldLineSelect;

        //if (iLineDif != 0) {
            iYOffset = __vk_tgui_text_list_calculate_container_x_height(
                    __vk_tgui_label_get_line_height(&(ptTextList->tList.tContent)),
                    iLineDif,
                    ptTextList->tList.tContent.tLabel.chInterLineSpace);
            vk_tgui_slider_location_target_increase( &(ptTextList->tSlider), iYOffset);
        //}
    } while(0);

#else
    int_fast16_t iListHeight =
                    vsf_tgui_control_get_core(
                        (const vsf_tgui_control_t *)ptTextList)
                            ->tRegion.tSize.iHeight;

    iYOffset = __vk_tgui_text_list_calculate_container_x(
                    __vk_tgui_label_get_line_height(&(ptTextList->tList.tContent)),
                    iLineSelect,
                    iListHeight,
                    ptTextList->tList.tContent.tLabel.chInterLineSpace);

    __vk_tgui_text_list_get_real_container_x(
                        (const vsf_tgui_text_list_t* )ptTextList, &iYOffset);

    vsf_tgui_control_get_core(
            (const vsf_tgui_control_t *)&(ptTextList->tList.use_as__vsf_tgui_container_t))
        ->tRegion.tLocation.iY = -iYOffset;
#endif
}

static void __vk_tgui_text_list_internal_update(vsf_tgui_text_list_t* ptTextList)
{
    ptTextList->tList.tBuffer = ptTextList->tList.tContent;
    ptTextList->tList.tContent.Offset.next =
        (intptr_t)&ptTextList->tList.tBuffer - (intptr_t)&ptTextList->tList.tContent;
    ptTextList->tList.tBuffer.Offset.next = 0;
#if VSF_MSG_TREE_CFG_SUPPORT_DUAL_LIST == ENABLED
    ptTextList->tList.tBuffer.Offset.previous =
        (intptr_t)&ptTextList->tList.tBuffer - (intptr_t)&ptTextList->tList.tContent;
#endif

    ptTextList->tList.tBuffer.iY = ptTextList->tList.tContent.iHeight;

    ptTextList->hwLineCount = ptTextList->tList.tContent.tLabel.tInfoCache.hwLines;
}



#if VSF_TGUI_CFG_TEXT_LIST_SUPPORT_SLIDE == ENABLED
static void __vk_tgui_text_list_use_minimal_position(vsf_tgui_text_list_t* ptTextList)
{
    int_fast16_t iRealPosition = __vk_tgui_text_list_get_real_container_x(
                ptTextList,
                vk_tgui_slider_location_target_get(&(ptTextList->tSlider)));

    /*iRealPosition -= __vk_tgui_text_list_calculate_container_x_adjust(
                    __vk_tgui_label_get_line_height(&(ptTextList->tList.tContent)),
                    vsf_tgui_control_get_core(
                        (const vsf_tgui_control_t *)ptTextList)
                            ->tRegion.tSize.iHeight);
     */
    vk_tgui_slider_location_set(&(ptTextList->tSlider), iRealPosition, iRealPosition);

}


static void __vk_tui_text_list_update_container_position(vsf_tgui_text_list_t* ptTextList)
{
    vsf_tgui_control_get_core(
            (const vsf_tgui_control_t *)&(ptTextList->tList.use_as__vsf_tgui_container_t))
        ->tRegion.tLocation.iY =
            - __vk_tgui_text_list_get_real_container_x(
                ptTextList,

                    vk_tgui_slider_on_timer_event_handler(&(ptTextList->tSlider))
                -   __vk_tgui_text_list_calculate_container_x_adjust(
                        __vk_tgui_label_get_line_height(&(ptTextList->tList.tContent)),
                        vsf_tgui_control_get_core(
                            (const vsf_tgui_control_t *)ptTextList)
                                ->tRegion.tSize.iHeight)
            );
}
#endif

fsm_rt_t vsf_tgui_text_list_msg_handler( vsf_tgui_text_list_t* ptTextList,
                                            vsf_tgui_msg_t* ptMSG)
{
    fsm_rt_t fsm;
    bool bStatusChanged = false;

#if VSF_TGUI_CFG_TEXT_LIST_SUPPORT_SLIDE == ENABLED

    if (VSF_TGUI_EVT_ON_TIME == ptMSG->use_as__vsf_msgt_msg_t.msg) {

        vk_tgui_slider_on_timer_event_handler(&(ptTextList->tSlider));
        __vk_tui_text_list_update_container_position(ptTextList);

        if (!vk_tgui_slider_is_working(&(ptTextList->tSlider))) {
            __vk_tgui_text_list_use_minimal_position(ptTextList);
        }

        return (fsm_rt_t)VSF_TGUI_MSG_RT_REFRESH;
    }
#endif

    fsm = __vsf_tgui_control_msg_handler(   (vsf_tgui_control_t *)ptTextList,
                                            ptMSG,
                                            &c_tVTextList);

    if (VSF_TGUI_EVT_KEY_PRESSED == ptMSG->use_as__vsf_msgt_msg_t.msg){
        vsf_tgui_key_evt_t* ptEvt = (vsf_tgui_key_evt_t*)ptMSG;

        switch (ptEvt->hwKeyValue) {
            case VSF_TGUI_KEY_UP:
                ptTextList->iLineSelect--;
                bStatusChanged = true;
                break;
            case VSF_TGUI_KEY_DOWN:
                ptTextList->iLineSelect++;
                bStatusChanged = true;
                break;
            default:
                break;
        }
    }
#if VSF_TGUI_CFG_SUPPORT_MOUSE == ENABLED
    else if (VSF_TGUI_EVT_GESTURE_SLIDE == ptMSG->use_as__vsf_msgt_msg_t.msg) {
        vsf_tgui_gesture_evt_t* ptEvt = (vsf_tgui_gesture_evt_t*)ptMSG;
        if (ptEvt->tDelta.use_as__vsf_tgui_location_t.iY > 0) {
            ptTextList->iLineSelect++;
        } else {
            ptTextList->iLineSelect--;
        }
        bStatusChanged = true;
    }
#endif

    if (bStatusChanged) {
        __vk_tgui_text_list_update_line_selection(ptTextList, ptTextList->iLineSelect);
    #if VSF_TGUI_CFG_TEXT_LIST_SUPPORT_SLIDE == ENABLED
        ptTextList->iOldLineSelect = ptTextList->iLineSelect;
    #endif
        fsm = VSF_TGUI_MSG_RT_REFRESH;
    }

    return fsm;
}


fsm_rt_t vk_tgui_text_list_update(vsf_tgui_text_list_t* ptTextList)
{
    /*! \note before this function is called, all controls in the container are
              updated with TREE_UPDATE message
     */
    __vk_tgui_text_list_internal_update(ptTextList);
    __vk_tgui_text_list_update_line_selection(ptTextList, ptTextList->iLineSelect);

#if VSF_TGUI_CFG_TEXT_LIST_SUPPORT_SLIDE == ENABLED
    ptTextList->iOldLineSelect = ptTextList->iLineSelect;
    __vk_tgui_text_list_use_minimal_position(ptTextList);
    __vk_tui_text_list_update_container_position(ptTextList);
#endif

    return vk_tgui_container_update(
                &(ptTextList->use_as__vsf_tgui_container_t));
}

static fsm_rt_t vk_tgui_text_list_init(vsf_tgui_text_list_t* ptTextList)
{
#if VSF_TGUI_CFG_TEXT_LIST_SUPPORT_SLIDE == ENABLED
    vk_tgui_slider_init(&(ptTextList->tSlider),                     /*!< slider */
                        (const vsf_tgui_control_t *)ptTextList,     /*!< host control*/
                        0);                                         /*!< use default fps */
#endif

    __vk_tgui_text_list_internal_update(ptTextList);

    vk_tgui_container_init(
                &(ptTextList->use_as__vsf_tgui_container_t));

    do {
        vsf_tgui_status_t Status = vsf_tgui_control_status_get((vsf_tgui_control_t*)ptTextList);
        Status.Values.__does_contain_builtin_structure = true;

        vsf_tgui_control_status_set((vsf_tgui_control_t*)ptTextList, Status);
    } while(0);

    return fsm_rt_cpl;
}

int_fast16_t vsf_tgui_text_list_select_get(vsf_tgui_text_list_t* ptTextList)
{
    VSF_TGUI_ASSERT(NULL != ptTextList);

    return ptTextList->iLineSelect;
}

void vsf_tgui_text_list_select_set( vsf_tgui_text_list_t* ptTextList,
                                    int_fast16_t iSelect)
{
    VSF_TGUI_ASSERT(NULL != ptTextList);
    /*if (0 == ptTextList->hwLineCount) {
        return;
    }*/
#if VSF_TGUI_CFG_TEXT_LIST_SUPPORT_SLIDE == ENABLED
    //ptTextList->iOldLineSelect = iSelect;
#endif
    ptTextList->iLineSelect = iSelect;
    __vk_tgui_text_list_update_line_selection(ptTextList, iSelect);

}

#endif


/* EOF */

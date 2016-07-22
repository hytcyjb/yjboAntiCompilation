.class public Lcom/didi/frame/controlpanel/ControlPanelHelper;
.super Ljava/lang/Object;
.source "ControlPanelHelper.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x32

.field private static controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

.field private static fliping:Z

.field private static final splitWidth2:I

.field private static final splitWidth3:I

.field private static final splitWidth4:I

.field private static final subPinSplitWidth2:I

.field private static final subPinSplitWidth3:I

.field private static final subPinSplitWidth4:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0902cf

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByHorizontalRatio(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->splitWidth2:I

    .line 40
    const v0, 0x7f0902d0

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByHorizontalRatio(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->splitWidth3:I

    .line 41
    const v0, 0x7f0902d1

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByHorizontalRatio(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->splitWidth4:I

    .line 43
    const v0, 0x7f0902d3

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByHorizontalRatio(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->subPinSplitWidth2:I

    .line 45
    const v0, 0x7f0902d4

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByHorizontalRatio(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->subPinSplitWidth3:I

    .line 47
    const v0, 0x7f0902d5

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByHorizontalRatio(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->subPinSplitWidth4:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/didi/frame/controlpanel/ControlPanel;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->fliping:Z

    return p0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->clear()V

    .line 71
    return-void
.end method

.method public static flipConfirmDown()V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Lcom/didi/frame/controlpanel/ControlPanelHelper$2;

    invoke-direct {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper$2;-><init>()V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    new-instance v0, Lcom/didi/frame/controlpanel/ControlPanelHelper$3;

    invoke-direct {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper$3;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static flipConfirmDownDelayed()V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isDefault()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-boolean v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->fliping:Z

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->fliping:Z

    .line 234
    new-instance v0, Lcom/didi/frame/controlpanel/ControlPanelHelper$6;

    invoke-direct {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper$6;-><init>()V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static flipConfirmDownDelayed(I)V
    .locals 3
    .parameter "delays"

    .prologue
    .line 244
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isDefault()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    sget-boolean v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->fliping:Z

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->fliping:Z

    .line 249
    new-instance v0, Lcom/didi/frame/controlpanel/ControlPanelHelper$7;

    invoke-direct {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper$7;-><init>()V

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static flipConfirmUp()V
    .locals 3

    .prologue
    .line 196
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showConfirm()V

    .line 199
    new-instance v0, Lcom/didi/frame/controlpanel/ControlPanelHelper$4;

    invoke-direct {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper$4;-><init>()V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static flipConfirmUpDelayed()V
    .locals 3

    .prologue
    .line 213
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isDefault()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfirmFliping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/didi/frame/controlpanel/ControlPanelHelper;->fliping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 216
    sget-boolean v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->fliping:Z

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->fliping:Z

    .line 219
    new-instance v0, Lcom/didi/frame/controlpanel/ControlPanelHelper$5;

    invoke-direct {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper$5;-><init>()V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static get()Lcom/didi/frame/controlpanel/ControlPanel;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    return-object v0
.end method

.method public static getConfirmText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->getConfirmText()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->getOperationArea()Lcom/didi/frame/controlpanel/OperationArea;

    move-result-object v0

    return-object v0
.end method

.method public static getSplitWidth(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 122
    packed-switch p0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 124
    :pswitch_0
    sget v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->splitWidth2:I

    goto :goto_0

    .line 126
    :pswitch_1
    sget v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->splitWidth3:I

    goto :goto_0

    .line 128
    :pswitch_2
    sget v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->splitWidth4:I

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSubPinSplitWidth(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 134
    packed-switch p0, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    sget v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->subPinSplitWidth2:I

    goto :goto_0

    .line 138
    :pswitch_1
    sget v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->subPinSplitWidth3:I

    goto :goto_0

    .line 140
    :pswitch_2
    sget v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->subPinSplitWidth4:I

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static hide()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->invisible()V

    .line 115
    return-void
.end method

.method public static hideConfirm()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->hideConfirm()V

    .line 105
    return-void
.end method

.method public static hideDefaultContent()V
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->slideOut()V

    goto :goto_0
.end method

.method public static isDefault()Z
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getSwitcherPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/switcher/SwitcherPanel;->getControlPanel()Lcom/didi/frame/controlpanel/ControlPanel;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFliping()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->fliping:Z

    return v0
.end method

.method public static isShown()Z
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->reset()V

    .line 67
    return-void
.end method

.method public static set(Lcom/didi/frame/controlpanel/ControlPanel;)V
    .locals 1
    .parameter "cp"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/didi/frame/controlpanel/ControlPanel;->activate()V

    .line 56
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->deactivate()V

    .line 58
    :cond_0
    sput-object p0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    .line 59
    return-void
.end method

.method public static setConfirmText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 350
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0, p0}, Lcom/didi/frame/controlpanel/ControlPanel;->setConfirmText(I)V

    .line 351
    return-void
.end method

.method public static setDefaultPanel()V
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getSwitcherPanel()Lcom/didi/frame/switcher/SwitcherPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/switcher/SwitcherPanel;->getControlPanel()Lcom/didi/frame/controlpanel/ControlPanel;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->set(Lcom/didi/frame/controlpanel/ControlPanel;)V

    .line 260
    return-void
.end method

.method public static setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 263
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0, p0}, Lcom/didi/frame/controlpanel/ControlPanel;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    return-void
.end method

.method public static show()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->show()V

    goto :goto_0
.end method

.method public static showCarModelLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->setEnabled(Z)V

    .line 290
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->hide()V

    .line 292
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/remark/RemarkTriggerView;->setEnabled(Z)V

    .line 293
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->hide()V

    .line 295
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setEnabled(Z)V

    .line 296
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->show()V

    .line 298
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setEnabled(Z)V

    .line 299
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->hide()V

    .line 301
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelOperator;->setTriggerAvailable(Z)V

    .line 302
    return-void
.end method

.method public static showCarPriceLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 320
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->setEnabled(Z)V

    .line 321
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->show()V

    .line 323
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/remark/RemarkTriggerView;->setEnabled(Z)V

    .line 324
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->show()V

    .line 326
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setEnabled(Z)V

    .line 327
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->hide()V

    .line 329
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setEnabled(Z)V

    .line 330
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->hide()V

    .line 331
    return-void
.end method

.method public static showConfirm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/ControlPanel;->enableConfirm(Z)V

    .line 75
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/ControlPanel;->showConfirm()V

    .line 78
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/car/ui/fragment/CarResendFragment;

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getOpenCarByCityId(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/ControlPanel;->enableConfirm(Z)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0, v2}, Lcom/didi/frame/controlpanel/ControlPanel;->enableConfirm(Z)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    if-nez v0, :cond_4

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/flier/ui/fragment/FlierResendFragment;

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 95
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/database/CityListHelper;->getOpenCarByCityId(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/ControlPanel;->enableConfirm(Z)V

    goto :goto_0

    .line 98
    :cond_5
    sget-object v0, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v0, v2}, Lcom/didi/frame/controlpanel/ControlPanel;->enableConfirm(Z)V

    goto :goto_0
.end method

.method public static showDefaultContent()V
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->checkPriceList()V

    .line 278
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->checkTimeList()V

    .line 279
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showRemarkLayout()V

    .line 280
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->checkRemark()V

    .line 281
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 282
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->checkCarPool()V

    .line 283
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->slideIn()V

    goto :goto_0
.end method

.method public static showOnlyRemarkLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->setEnabled(Z)V

    .line 306
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->hide()V

    .line 308
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setEnabled(Z)V

    .line 309
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->show()V

    .line 311
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/carmodel/CarModelTriggerView;->setEnabled(Z)V

    .line 312
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->getTrigger()Lcom/didi/frame/carmodel/CarModelTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelTriggerView;->hide()V

    .line 314
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setEnabled(Z)V

    .line 315
    invoke-static {}, Lcom/didi/frame/carpool/CarPoolOperator;->getInstance()Lcom/didi/frame/carpool/CarPoolOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolOperator;->getTrigger()Lcom/didi/frame/carpool/CarPoolTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->hide()V

    .line 317
    return-void
.end method

.method public static showRemarkLayout()V
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->setEnabled(Z)V

    .line 340
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkTriggerView;->show()V

    .line 341
    return-void
.end method

.method public static slideIn()V
    .locals 2

    .prologue
    .line 160
    sget-object v1, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-virtual {v1}, Lcom/didi/frame/controlpanel/ControlPanel;->show()V

    .line 161
    const/16 v0, 0x1f4

    .line 162
    .local v0, duration:I
    sget-object v1, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-static {v1, v0}, Lcom/didi/common/util/AnimationUtil;->slideUpAnim(Landroid/view/View;I)Z

    .line 163
    return-void
.end method

.method public static slideOut()V
    .locals 4

    .prologue
    .line 147
    const/16 v0, 0x320

    .line 148
    .local v0, duration:I
    sget-object v1, Lcom/didi/frame/controlpanel/ControlPanelHelper;->controlPanel:Lcom/didi/frame/controlpanel/ControlPanel;

    invoke-static {v1, v0}, Lcom/didi/common/util/AnimationUtil;->translateDownAnim(Landroid/view/View;I)Z

    .line 149
    new-instance v1, Lcom/didi/frame/controlpanel/ControlPanelHelper$1;

    invoke-direct {v1}, Lcom/didi/frame/controlpanel/ControlPanelHelper$1;-><init>()V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method

.method public static updateCarModelView(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, modelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/frame/carmodel/CarModelOperator;->updateContentPin(Ljava/util/List;)V

    .line 345
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->updateCarModelPinViewSelect()V

    .line 346
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->showContentPins()V

    .line 347
    return-void
.end method

.class public Lcom/didi/im/component/AudioRecordDialog;
.super Ljava/lang/Object;
.source "AudioRecordDialog.java"


# instance fields
.field private ivVoiceRecord:Lx/ImageView;

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field private tvVoiceRecordTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeBackGroundBySound(I)V
    .locals 2
    .parameter "soundLevel"

    .prologue
    .line 69
    packed-switch p1, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->ivVoiceRecord:Lx/ImageView;

    const v1, 0x7f0202eb

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->ivVoiceRecord:Lx/ImageView;

    const v1, 0x7f0202ec

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->ivVoiceRecord:Lx/ImageView;

    const v1, 0x7f0202ed

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dissMissAudioDialog()V
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/didi/im/component/AudioRecordDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 47
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTip(Z)V
    .locals 2
    .parameter "cancel"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->tvVoiceRecordTip:Landroid/widget/TextView;

    const v1, 0x7f0b0396

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->tvVoiceRecordTip:Landroid/widget/TextView;

    const v1, 0x7f070047

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->tvVoiceRecordTip:Landroid/widget/TextView;

    const v1, 0x7f020207

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->tvVoiceRecordTip:Landroid/widget/TextView;

    const v1, 0x7f0b0395

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->tvVoiceRecordTip:Landroid/widget/TextView;

    const v1, 0x7f070021

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lcom/didi/im/component/AudioRecordDialog;->tvVoiceRecordTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showAudioDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 28
    const v3, 0x7f0300b8

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 29
    .local v1, view:Landroid/view/View;
    const v3, 0x7f0803d4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lx/ImageView;

    iput-object v3, p0, Lcom/didi/im/component/AudioRecordDialog;->ivVoiceRecord:Lx/ImageView;

    .line 30
    const v3, 0x7f0803d5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/didi/im/component/AudioRecordDialog;->tvVoiceRecordTip:Landroid/widget/TextView;

    .line 31
    const v3, 0x7f090232

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v3

    float-to-int v2, v3

    .line 32
    .local v2, width:I
    const v3, 0x7f09022b

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v3

    float-to-int v0, v3

    .line 33
    .local v0, height:I
    iget-object v3, p0, Lcom/didi/im/component/AudioRecordDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 34
    invoke-static {v1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 35
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v0, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/didi/im/component/AudioRecordDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/didi/im/component/AudioRecordDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 38
    iget-object v3, p0, Lcom/didi/im/component/AudioRecordDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 40
    return-void
.end method

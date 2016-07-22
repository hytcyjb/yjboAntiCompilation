.class public Lcom/didi/common/ui/component/UiHelper;
.super Ljava/lang/Object;
.source "UiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/UiHelper$4;
    }
.end annotation


# static fields
.field private static final onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/didi/common/ui/component/UiHelper$1;

    invoke-direct {v0}, Lcom/didi/common/ui/component/UiHelper$1;-><init>()V

    sput-object v0, Lcom/didi/common/ui/component/UiHelper;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method private static createInvalidTokenCommonDialogListener(Lcom/didi/common/helper/DialogHelper;Lcom/didi/common/ui/fragment/SlideFragment;Landroid/os/Bundle;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    .locals 1
    .parameter "dialogHelper"
    .parameter "fragment"
    .parameter "bundle"

    .prologue
    .line 109
    new-instance v0, Lcom/didi/common/ui/component/UiHelper$2;

    invoke-direct {v0, p2}, Lcom/didi/common/ui/component/UiHelper$2;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static hide(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 181
    if-eqz p0, :cond_0

    .line 182
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_0
    return-void
.end method

.method public static invisible(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 186
    if-eqz p0, :cond_0

    .line 187
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public static jumpActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter
    .parameter "extraName"
    .parameter "extraValue"
    .parameter "extraName1"
    .parameter "extraValue1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, taxiTargetActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, carTargetActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    .line 233
    .local v1, currentBussiness:Lcom/didi/frame/business/Business;
    sget-object v3, Lcom/didi/common/ui/component/UiHelper$4;->$SwitchMap$com$didi$frame$business$Business:[I

    invoke-virtual {v1}, Lcom/didi/frame/business/Business;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 235
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v0, carIntent:Landroid/content/Intent;
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static loadDefaultAvatar()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f0201be

    invoke-static {v1, v2}, Lcom/didi/common/util/ImageUtil;->createBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v1, Lcom/didi/common/config/Configuration;->AVATAR_RADIUS:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/didi/common/util/ImageUtil;->round(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static promptDialog(Ljava/lang/String;I)V
    .locals 3
    .parameter "msg"
    .parameter "resId"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, message:Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 62
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 63
    return-void

    .end local v0           #dialogHelper:Lcom/didi/common/helper/DialogHelper;
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    move-object v1, p0

    .line 57
    goto :goto_0
.end method

.method public static promptInvalidDataDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b04bb

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, message:Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 76
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 77
    return-void

    .end local v0           #dialogHelper:Lcom/didi/common/helper/DialogHelper;
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    move-object v1, p0

    .line 71
    goto :goto_0
.end method

.method public static promptLoginDialog()V
    .locals 2

    .prologue
    .line 97
    const v0, 0x7f0b0422

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/common/ui/component/UiHelper;->promptLoginDialog(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public static promptLoginDialog(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "msg"
    .parameter "bundle"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 92
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/didi/common/ui/component/UiHelper;->createInvalidTokenCommonDialogListener(Lcom/didi/common/helper/DialogHelper;Lcom/didi/common/ui/fragment/SlideFragment;Landroid/os/Bundle;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 93
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .parameter "listView"

    .prologue
    const/4 v6, 0x0

    .line 251
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 252
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v4, 0x0

    .line 256
    .local v4, totalHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 257
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 258
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 259
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    .end local v2           #listItem:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 263
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static shieldTouchEvent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 217
    if-eqz p0, :cond_0

    .line 218
    sget-object v0, Lcom/didi/common/ui/component/UiHelper;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    :cond_0
    return-void
.end method

.method public static show(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 176
    if-eqz p0, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_0
    return-void
.end method

.method public static show(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "delay"

    .prologue
    .line 191
    new-instance v0, Lcom/didi/common/ui/component/UiHelper$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/UiHelper$3;-><init>(Landroid/view/View;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void
.end method

.method public static showOrHide(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "tv"
    .parameter "text"

    .prologue
    .line 201
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-static {p0}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-static {p0}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static showTip(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 162
    invoke-static {p0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 163
    return-void
.end method

.method public static showTip(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 153
    invoke-static {p0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    .line 154
    return-void
.end method

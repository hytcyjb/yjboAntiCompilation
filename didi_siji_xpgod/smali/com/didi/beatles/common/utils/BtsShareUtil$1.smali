.class final Lcom/didi/beatles/common/utils/BtsShareUtil$1;
.super Ljava/lang/Object;
.source "BtsShareUtil.java"

# interfaces
.implements Lcom/didi/taxi/ui/component/ShareView$ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/common/utils/BtsShareUtil;->share(Landroid/content/Context;Landroid/view/View;ILcom/didi/beatles/model/BtsShareMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-static {}, Lcom/didi/beatles/common/utils/BtsShareUtil;->access$000()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/beatles/common/utils/BtsShareUtil;->access$000()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/didi/beatles/common/utils/BtsShareUtil;->access$000()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/beatles/common/utils/BtsShareUtil;->access$002(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x7f080561
        :pswitch_0
    .end packed-switch
.end method

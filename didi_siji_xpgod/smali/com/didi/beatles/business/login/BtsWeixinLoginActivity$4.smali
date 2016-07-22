.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$4;
.super Ljava/lang/Object;
.source "BtsWeixinLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 262
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$4;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-virtual {v0}, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;->finish()V

    .line 265
    :cond_0
    return-void
.end method

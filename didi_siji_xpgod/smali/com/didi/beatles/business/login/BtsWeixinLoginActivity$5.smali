.class Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$5;
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
    .line 268
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsWeixinLoginActivity$5;->this$0:Lcom/didi/beatles/business/login/BtsWeixinLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 272
    const v0, 0x7f0b0120

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 273
    return-void
.end method

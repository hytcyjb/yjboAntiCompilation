.class Lcom/didi/beatles/business/login/BtsLoginActivity$20;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;->onLogin(Lcom/didi/common/model/CommonToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$20;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$20;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #getter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isBack:Z
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3400(Lcom/didi/beatles/business/login/BtsLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$20;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->updateAddr()V
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3500(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    .line 931
    :cond_0
    return-void
.end method

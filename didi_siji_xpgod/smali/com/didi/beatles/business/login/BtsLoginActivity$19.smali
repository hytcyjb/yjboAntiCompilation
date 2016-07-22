.class Lcom/didi/beatles/business/login/BtsLoginActivity$19;
.super Ljava/lang/Object;
.source "BtsLoginActivity.java"

# interfaces
.implements Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/business/login/BtsLoginActivity;
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
    .line 896
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$19;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetInfo()V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$19;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    const/4 v1, 0x1

    #setter for: Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetRoleInfoFinish:Z
    invoke-static {v0, v1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3202(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z

    .line 902
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity$19;->this$0:Lcom/didi/beatles/business/login/BtsLoginActivity;

    #calls: Lcom/didi/beatles/business/login/BtsLoginActivity;->backToPrePage()V
    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->access$3300(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    .line 903
    return-void
.end method

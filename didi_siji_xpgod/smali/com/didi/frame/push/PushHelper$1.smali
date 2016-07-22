.class final Lcom/didi/frame/push/PushHelper$1;
.super Ljava/lang/Object;
.source "PushHelper.java"

# interfaces
.implements Lcom/didi/common/listener/LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/push/PushHelper;->registerLoginListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "oldPhone"
    .parameter "newPhone"

    .prologue
    .line 170
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->connPush()V

    .line 171
    return-void
.end method

.method public onRedPoint(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 175
    return-void
.end method

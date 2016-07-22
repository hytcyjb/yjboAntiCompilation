.class Lcom/avos/avoscloud/AVObject$5;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->fetch(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$5;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 690
    if-eqz p2, :cond_0

    .line 691
    invoke-static {p2}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 693
    :cond_0
    return-void
.end method

.method protected mustRunOnUIThread()Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/didi/beatles/ui/component/BtsShareView$2;
.super Ljava/lang/Object;
.source "BtsShareView.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/beatles/ui/component/BtsShareView;->shareQZone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/ui/component/BtsShareView;


# direct methods
.method constructor <init>(Lcom/didi/beatles/ui/component/BtsShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsShareView$2;->this$0:Lcom/didi/beatles/ui/component/BtsShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 106
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, arg2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "my_trip_qzone_successed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsShareView$2;->this$0:Lcom/didi/beatles/ui/component/BtsShareView;

    const-string v1, "g_app_public_log"

    const-string v2, "pay_share_suc_channel_ck"

    const-string v3, "4"

    #calls: Lcom/didi/beatles/ui/component/BtsShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/ui/component/BtsShareView;->access$100(Lcom/didi/beatles/ui/component/BtsShareView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 95
    return-void
.end method

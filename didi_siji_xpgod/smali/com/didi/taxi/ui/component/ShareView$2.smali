.class Lcom/didi/taxi/ui/component/ShareView$2;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/ShareView;->shareWeixin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/ShareView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/ShareView;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView$2;->this$0:Lcom/didi/taxi/ui/component/ShareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 444
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
    .line 438
    .local p3, arg2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView$2;->this$0:Lcom/didi/taxi/ui/component/ShareView;

    const-string v1, "g_app_public_log"

    const-string v2, "pay_share_suc_channel_ck"

    const-string v3, "2"

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/taxi/ui/component/ShareView;->addAppSharePublicLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 434
    return-void
.end method

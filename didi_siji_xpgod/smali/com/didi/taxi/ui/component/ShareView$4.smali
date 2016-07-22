.class Lcom/didi/taxi/ui/component/ShareView$4;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/component/ShareView;->shareSinaWeibo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/ShareView;

.field final synthetic val$backListener:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic val$platform:Lcn/sharesdk/framework/Platform;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/ShareView;Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/didi/taxi/ui/component/ShareView$4;->this$0:Lcom/didi/taxi/ui/component/ShareView;

    iput-object p2, p0, Lcom/didi/taxi/ui/component/ShareView$4;->val$platform:Lcn/sharesdk/framework/Platform;

    iput-object p3, p0, Lcom/didi/taxi/ui/component/ShareView$4;->val$backListener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 553
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
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
    .local p3, arg2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .line 556
    if-ne p2, v2, :cond_0

    .line 557
    iget-object v0, p0, Lcom/didi/taxi/ui/component/ShareView$4;->val$platform:Lcn/sharesdk/framework/Platform;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/ShareView$4;->val$backListener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 559
    invoke-static {}, Lcom/didi/common/config/PhoneStatusConfig;->getInstance()Lcom/didi/common/config/PhoneStatusConfig;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/config/PhoneStatusConfig;->setPhoneBingWeiboStatus(Ljava/lang/String;Z)V

    .line 561
    :cond_0
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 564
    return-void
.end method

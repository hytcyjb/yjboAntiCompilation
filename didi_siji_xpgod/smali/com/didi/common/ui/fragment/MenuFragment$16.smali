.class Lcom/didi/common/ui/fragment/MenuFragment$16;
.super Lcom/didi/common/net/ResponseListener;
.source "MenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/fragment/MenuFragment;->getVirtualMobile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/CommonVirtualMobile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/MenuFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/MenuFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/didi/common/ui/fragment/MenuFragment$16;->this$0:Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 832
    check-cast p1, Lcom/didi/common/model/CommonVirtualMobile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/MenuFragment$16;->onSuccess(Lcom/didi/common/model/CommonVirtualMobile;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/CommonVirtualMobile;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 835
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 836
    sput-object p1, Lcom/didi/common/util/Constant;->virutalMobile:Lcom/didi/common/model/CommonVirtualMobile;

    .line 837
    return-void
.end method

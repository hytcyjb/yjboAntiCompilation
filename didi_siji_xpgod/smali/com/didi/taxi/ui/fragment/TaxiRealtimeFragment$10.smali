.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;
.super Lcom/didi/common/net/ResponseListener;
.source "TaxiRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->updateAddr(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/common/model/AddressList;",
        ">;"
    }
.end annotation


# instance fields
.field private addressType:I

.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    iput p2, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;->val$type:I

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    .line 664
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;->val$type:I

    iput v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;->addressType:I

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/common/model/AddressList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;->addressType:I

    #calls: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->onGetAddressList(Lcom/didi/common/model/AddressList;I)V
    invoke-static {v0, p1, v1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$900(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;Lcom/didi/common/model/AddressList;I)V

    .line 673
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 663
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;->onFinish(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 668
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 663
    check-cast p1, Lcom/didi/common/model/AddressList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$10;->onSuccess(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

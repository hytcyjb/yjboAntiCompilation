.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "TaxiWaitForArrivalDriverBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submit()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;->submit()V

    .line 303
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    iget-object v1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->mPhone:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->actionCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalDriverBar;Ljava/lang/String;)V

    .line 304
    return-void
.end method

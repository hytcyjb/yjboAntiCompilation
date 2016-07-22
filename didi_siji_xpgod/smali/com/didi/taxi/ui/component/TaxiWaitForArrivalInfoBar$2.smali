.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalInfoBar.java"

# interfaces
.implements Lcom/didi/common/ui/component/Gesturer$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 148
    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->strContent:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->mDrawerView:Lcom/didi/common/ui/component/DrawerView;
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->access$200(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)Lcom/didi/common/ui/component/DrawerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->openDrawer()V
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->access$300(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar$2;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;

    #calls: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->closeDrawer()V
    invoke-static {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;->access$400(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalInfoBar;)V

    goto :goto_0
.end method

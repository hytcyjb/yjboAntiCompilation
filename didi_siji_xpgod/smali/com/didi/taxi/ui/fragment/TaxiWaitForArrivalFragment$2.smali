.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$2;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$2;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 427
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 428
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 430
    return-void
.end method

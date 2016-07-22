.class Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$5;
.super Ljava/lang/Object;
.source "TaxiEndOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;->skipPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity$5;->this$0:Lcom/didi/taxi/ui/activity/TaxiEndOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0x9

    sput v0, Lcom/didi/common/util/Constant;->TaxiOrderType:I

    .line 242
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showTaxiRealtimeFragment()V

    .line 243
    return-void
.end method

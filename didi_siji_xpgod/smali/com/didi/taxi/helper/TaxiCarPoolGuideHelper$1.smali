.class Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$1;
.super Ljava/lang/Object;
.source "TaxiCarPoolGuideHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->showGuideDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$1;->this$0:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper$1;->this$0:Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;

    invoke-virtual {v0}, Lcom/didi/taxi/helper/TaxiCarPoolGuideHelper;->showGuide()V

    .line 96
    return-void
.end method

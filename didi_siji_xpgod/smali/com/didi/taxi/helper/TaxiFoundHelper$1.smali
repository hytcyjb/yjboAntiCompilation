.class final Lcom/didi/taxi/helper/TaxiFoundHelper$1;
.super Lthread/Job;
.source "TaxiFoundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiFoundHelper;->loadFoundList(Lcom/didi/taxi/helper/TaxiFoundHelper$FoundCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/didi/taxi/helper/TaxiFoundHelper$FoundCallback;


# direct methods
.method constructor <init>(Lcom/didi/taxi/helper/TaxiFoundHelper$FoundCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$1;->val$callback:Lcom/didi/taxi/helper/TaxiFoundHelper$FoundCallback;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$1;->val$callback:Lcom/didi/taxi/helper/TaxiFoundHelper$FoundCallback;

    #calls: Lcom/didi/taxi/helper/TaxiFoundHelper;->loadFoundListFromLocal()Ljava/util/List;
    invoke-static {}, Lcom/didi/taxi/helper/TaxiFoundHelper;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/didi/taxi/helper/TaxiFoundHelper$FoundCallback;->onLoaded(Ljava/util/List;)V

    .line 41
    return-void
.end method

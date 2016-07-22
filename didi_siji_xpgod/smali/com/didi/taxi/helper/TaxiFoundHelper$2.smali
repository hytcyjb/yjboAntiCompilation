.class final Lcom/didi/taxi/helper/TaxiFoundHelper$2;
.super Lthread/Job;
.source "TaxiFoundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/taxi/helper/TaxiFoundHelper;->saveFoundList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$founds:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$2;->val$founds:Ljava/util/List;

    invoke-direct {p0}, Lthread/Job;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/taxi/helper/TaxiFoundHelper$2;->val$founds:Ljava/util/List;

    #calls: Lcom/didi/taxi/helper/TaxiFoundHelper;->saveFoundListToLocal(Ljava/util/List;)V
    invoke-static {v0}, Lcom/didi/taxi/helper/TaxiFoundHelper;->access$100(Ljava/util/List;)V

    .line 51
    return-void
.end method

.class public Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiEndOrderConfirmResult.java"


# static fields
.field private static final serialVersionUID:J = -0x7e1dcbaba37d33dL


# instance fields
.field public cancelResult:Lcom/didi/common/model/RelationCancelResult;

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 17
    const-string v0, "alert"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;->msg:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/didi/common/model/RelationCancelResult;

    invoke-direct {v0}, Lcom/didi/common/model/RelationCancelResult;-><init>()V

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;->cancelResult:Lcom/didi/common/model/RelationCancelResult;

    .line 19
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiEndOrderConfirmResult;->cancelResult:Lcom/didi/common/model/RelationCancelResult;

    invoke-virtual {v0, p1}, Lcom/didi/common/model/RelationCancelResult;->parse(Lorg/json/JSONObject;)V

    .line 20
    return-void
.end method

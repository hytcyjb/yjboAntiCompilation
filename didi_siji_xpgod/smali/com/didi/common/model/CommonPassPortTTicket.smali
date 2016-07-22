.class public Lcom/didi/common/model/CommonPassPortTTicket;
.super Lcom/didi/common/model/BaseObject;
.source "CommonPassPortTTicket.java"


# instance fields
.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 15
    const-string v0, "tticket"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/CommonPassPortTTicket;->token:Ljava/lang/String;

    .line 16
    return-void
.end method

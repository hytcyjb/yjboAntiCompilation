.class public Lcom/didi/ddrive/net/tcp/message/BaseMessage;
.super Ljava/lang/Object;
.source "BaseMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

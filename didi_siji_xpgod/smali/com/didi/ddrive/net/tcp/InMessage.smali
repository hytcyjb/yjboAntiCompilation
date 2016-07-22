.class public Lcom/didi/ddrive/net/tcp/InMessage;
.super Ljava/lang/Object;
.source "InMessage.java"


# instance fields
.field public cmd:I

.field public idx:J

.field public msg:Ljava/lang/String;

.field public rid:J

.field public rt:Ljava/lang/String;

.field public sdt:J

.field public sid:J

.field public st:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

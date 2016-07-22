.class public final Lcom/didi/frame/protobuffer/ConsultInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConsultInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/ConsultInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/ConsultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public consult_min:Ljava/lang/String;

.field public driver_tips:Ljava/lang/String;

.field public system_tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/ConsultInfo;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 79
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConsultInfo;->consult_min:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->consult_min:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConsultInfo;->driver_tips:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->driver_tips:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/didi/frame/protobuffer/ConsultInfo;->system_tips:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->system_tips:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/ConsultInfo;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/didi/frame/protobuffer/ConsultInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/ConsultInfo;-><init>(Lcom/didi/frame/protobuffer/ConsultInfo$Builder;Lcom/didi/frame/protobuffer/ConsultInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->build()Lcom/didi/frame/protobuffer/ConsultInfo;

    move-result-object v0

    return-object v0
.end method

.method public consult_min(Ljava/lang/String;)Lcom/didi/frame/protobuffer/ConsultInfo$Builder;
    .locals 0
    .parameter "consult_min"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->consult_min:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public driver_tips(Ljava/lang/String;)Lcom/didi/frame/protobuffer/ConsultInfo$Builder;
    .locals 0
    .parameter "driver_tips"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->driver_tips:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public system_tips(Ljava/lang/String;)Lcom/didi/frame/protobuffer/ConsultInfo$Builder;
    .locals 0
    .parameter "system_tips"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/frame/protobuffer/ConsultInfo$Builder;->system_tips:Ljava/lang/String;

    .line 107
    return-object p0
.end method

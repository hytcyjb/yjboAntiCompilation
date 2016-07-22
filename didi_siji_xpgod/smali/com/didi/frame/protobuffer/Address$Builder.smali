.class public final Lcom/didi/frame/protobuffer/Address$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Address.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/Address;",
        ">;"
    }
.end annotation


# instance fields
.field public ip:Ljava/lang/String;

.field public port:Ljava/lang/Integer;

.field public should_stat:Ljava/lang/Boolean;

.field public timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/Address;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 97
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Address;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Address$Builder;->ip:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Address;->port:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Address$Builder;->port:Ljava/lang/Integer;

    .line 100
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Address;->timestamp:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Address$Builder;->timestamp:Ljava/lang/Long;

    .line 101
    iget-object v0, p1, Lcom/didi/frame/protobuffer/Address;->should_stat:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/Address$Builder;->should_stat:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/Address;
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Address$Builder;->checkRequiredFields()V

    .line 139
    new-instance v0, Lcom/didi/frame/protobuffer/Address;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/Address;-><init>(Lcom/didi/frame/protobuffer/Address$Builder;Lcom/didi/frame/protobuffer/Address$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/Address$Builder;->build()Lcom/didi/frame/protobuffer/Address;

    move-result-object v0

    return-object v0
.end method

.method public ip(Ljava/lang/String;)Lcom/didi/frame/protobuffer/Address$Builder;
    .locals 0
    .parameter "ip"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Address$Builder;->ip:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public port(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/Address$Builder;
    .locals 0
    .parameter "port"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Address$Builder;->port:Ljava/lang/Integer;

    .line 117
    return-object p0
.end method

.method public should_stat(Ljava/lang/Boolean;)Lcom/didi/frame/protobuffer/Address$Builder;
    .locals 0
    .parameter "should_stat"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Address$Builder;->should_stat:Ljava/lang/Boolean;

    .line 133
    return-object p0
.end method

.method public timestamp(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/Address$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/frame/protobuffer/Address$Builder;->timestamp:Ljava/lang/Long;

    .line 125
    return-object p0
.end method

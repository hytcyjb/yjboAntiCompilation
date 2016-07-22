.class public final Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiTimeout;",
        ">;"
    }
.end annotation


# instance fields
.field public consult:Ljava/lang/Integer;

.field public ospreyPK:Ljava/lang/Integer;

.field public strive:Ljava/lang/Integer;

.field public strive4look:Ljava/lang/Integer;

.field public waitRob:Ljava/lang/Integer;

.field public waitRobob4look:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiTimeout;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 111
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->strive:Ljava/lang/Integer;

    .line 113
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiTimeout;->consult:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->consult:Ljava/lang/Integer;

    .line 114
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRob:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->waitRob:Ljava/lang/Integer;

    .line 115
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiTimeout;->ospreyPK:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->ospreyPK:Ljava/lang/Integer;

    .line 116
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiTimeout;->strive4look:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->strive4look:Ljava/lang/Integer;

    .line 117
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiTimeout;->waitRobob4look:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->waitRobob4look:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiTimeout;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiTimeout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiTimeout;-><init>(Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;Lcom/didi/frame/protobuffer/TaxiTimeout$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->build()Lcom/didi/frame/protobuffer/TaxiTimeout;

    move-result-object v0

    return-object v0
.end method

.method public consult(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;
    .locals 0
    .parameter "consult"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->consult:Ljava/lang/Integer;

    .line 133
    return-object p0
.end method

.method public ospreyPK(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;
    .locals 0
    .parameter "ospreyPK"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->ospreyPK:Ljava/lang/Integer;

    .line 149
    return-object p0
.end method

.method public strive(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;
    .locals 0
    .parameter "strive"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->strive:Ljava/lang/Integer;

    .line 125
    return-object p0
.end method

.method public strive4look(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;
    .locals 0
    .parameter "strive4look"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->strive4look:Ljava/lang/Integer;

    .line 157
    return-object p0
.end method

.method public waitRob(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;
    .locals 0
    .parameter "waitRob"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->waitRob:Ljava/lang/Integer;

    .line 141
    return-object p0
.end method

.method public waitRobob4look(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;
    .locals 0
    .parameter "waitRobob4look"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiTimeout$Builder;->waitRobob4look:Ljava/lang/Integer;

    .line 165
    return-object p0
.end method

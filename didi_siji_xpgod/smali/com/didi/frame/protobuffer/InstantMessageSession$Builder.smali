.class public final Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "InstantMessageSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/InstantMessageSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/InstantMessageSession;",
        ">;"
    }
.end annotation


# instance fields
.field public mid:Ljava/lang/Long;

.field public product:Ljava/lang/Long;

.field public sid:Ljava/lang/Long;

.field public time:Ljava/lang/Long;

.field public uid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageSession;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 107
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageSession;->sid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->sid:Ljava/lang/Long;

    .line 109
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageSession;->uid:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/InstantMessageSession;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/InstantMessageSession;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->uid:Ljava/util/List;

    .line 110
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageSession;->mid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->mid:Ljava/lang/Long;

    .line 111
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageSession;->time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->time:Ljava/lang/Long;

    .line 112
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageSession;->product:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->product:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/InstantMessageSession;
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->checkRequiredFields()V

    .line 158
    new-instance v0, Lcom/didi/frame/protobuffer/InstantMessageSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/InstantMessageSession;-><init>(Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;Lcom/didi/frame/protobuffer/InstantMessageSession$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->build()Lcom/didi/frame/protobuffer/InstantMessageSession;

    move-result-object v0

    return-object v0
.end method

.method public mid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;
    .locals 0
    .parameter "mid"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->mid:Ljava/lang/Long;

    .line 136
    return-object p0
.end method

.method public product(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;
    .locals 0
    .parameter "product"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->product:Ljava/lang/Long;

    .line 152
    return-object p0
.end method

.method public sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->sid:Ljava/lang/Long;

    .line 120
    return-object p0
.end method

.method public time(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;
    .locals 0
    .parameter "time"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->time:Ljava/lang/Long;

    .line 144
    return-object p0
.end method

.method public uid(Ljava/util/List;)Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, uid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSession$Builder;->uid:Ljava/util/List;

    .line 128
    return-object p0
.end method

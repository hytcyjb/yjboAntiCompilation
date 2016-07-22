.class public final Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "InstantMessageSessionChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;",
        ">;"
    }
.end annotation


# instance fields
.field public product:Ljava/lang/Long;

.field public sid:Ljava/lang/Long;

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
    .line 68
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 73
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;->sid:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;->sid:Ljava/lang/Long;

    .line 75
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;->uid:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;->uid:Ljava/util/List;

    .line 76
    iget-object v0, p1, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;->product:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;->product:Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;->checkRequiredFields()V

    .line 97
    new-instance v0, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;-><init>(Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;->build()Lcom/didi/frame/protobuffer/InstantMessageSessionChanged;

    move-result-object v0

    return-object v0
.end method

.method public product(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;
    .locals 0
    .parameter "product"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;->product:Ljava/lang/Long;

    .line 91
    return-object p0
.end method

.method public sid(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;
    .locals 0
    .parameter "sid"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;->sid:Ljava/lang/Long;

    .line 81
    return-object p0
.end method

.method public uid(Ljava/util/List;)Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, uid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/InstantMessageSessionChanged$Builder;->uid:Ljava/util/List;

    .line 86
    return-object p0
.end method

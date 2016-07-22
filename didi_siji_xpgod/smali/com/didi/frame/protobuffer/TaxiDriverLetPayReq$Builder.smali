.class public final Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiDriverLetPayReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;",
        ">;"
    }
.end annotation


# instance fields
.field public detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;",
            ">;"
        }
    .end annotation
.end field

.field public is_update:Ljava/lang/Boolean;

.field public order_id:Ljava/lang/String;

.field public toast_content:Ljava/lang/String;

.field public total:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 106
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->order_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->order_id:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->total:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->total:Ljava/lang/Float;

    .line 109
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->detail:Ljava/util/List;

    #calls: Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->detail:Ljava/util/List;

    .line 110
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->toast_content:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->toast_content:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;->is_update:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->is_update:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->checkRequiredFields()V

    .line 157
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;-><init>(Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->build()Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq;

    move-result-object v0

    return-object v0
.end method

.method public detail(Ljava/util/List;)Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;",
            ">;)",
            "Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, detail:Ljava/util/List;,"Ljava/util/List<Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Item;>;"
    invoke-static {p1}, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->detail:Ljava/util/List;

    .line 135
    return-object p0
.end method

.method public is_update(Ljava/lang/Boolean;)Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;
    .locals 0
    .parameter "is_update"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->is_update:Ljava/lang/Boolean;

    .line 151
    return-object p0
.end method

.method public order_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;
    .locals 0
    .parameter "order_id"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->order_id:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public toast_content(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;
    .locals 0
    .parameter "toast_content"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->toast_content:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public total(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;
    .locals 0
    .parameter "total"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiDriverLetPayReq$Builder;->total:Ljava/lang/Float;

    .line 127
    return-object p0
.end method

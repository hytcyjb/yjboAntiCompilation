.class public final Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TaxiExtraInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/TaxiExtraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/TaxiExtraInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public addedIncome:Ljava/lang/Integer;

.field public bonus:Ljava/lang/Integer;

.field public description:Ljava/lang/String;

.field public price:Ljava/lang/Integer;

.field public score:Ljava/lang/Integer;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/TaxiExtraInfo;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 128
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->bonus:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->bonus:Ljava/lang/Integer;

    .line 130
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->score:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->score:Ljava/lang/Integer;

    .line 131
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->price:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->price:Ljava/lang/Integer;

    .line 132
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->addedIncome:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->addedIncome:Ljava/lang/Integer;

    .line 133
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->title:Ljava/lang/String;

    .line 134
    iget-object v0, p1, Lcom/didi/frame/protobuffer/TaxiExtraInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->description:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addedIncome(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;
    .locals 0
    .parameter "addedIncome"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->addedIncome:Ljava/lang/Integer;

    .line 166
    return-object p0
.end method

.method public bonus(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;
    .locals 0
    .parameter "bonus"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->bonus:Ljava/lang/Integer;

    .line 142
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/TaxiExtraInfo;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/didi/frame/protobuffer/TaxiExtraInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/TaxiExtraInfo;-><init>(Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;Lcom/didi/frame/protobuffer/TaxiExtraInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->build()Lcom/didi/frame/protobuffer/TaxiExtraInfo;

    move-result-object v0

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;
    .locals 0
    .parameter "description"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->description:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public price(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;
    .locals 0
    .parameter "price"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->price:Ljava/lang/Integer;

    .line 158
    return-object p0
.end method

.method public score(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;
    .locals 0
    .parameter "score"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->score:Ljava/lang/Integer;

    .line 150
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/didi/frame/protobuffer/TaxiExtraInfo$Builder;->title:Ljava/lang/String;

    .line 174
    return-object p0
.end method

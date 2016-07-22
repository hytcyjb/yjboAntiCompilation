.class public final Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PeerCoordinateRelation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PeerCoordinateRelation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PeerCoordinateRelation;",
        ">;"
    }
.end annotation


# instance fields
.field public biz_type:Ljava/lang/Integer;

.field public create_time:Ljava/lang/Integer;

.field public inactive_expire_seconds:Ljava/lang/Integer;

.field public last_active_timestamp:Ljava/lang/Integer;

.field public local_id:Ljava/lang/String;

.field public type:Lcom/didi/frame/protobuffer/RelationType;

.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PeerCoordinateRelation;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 126
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->local_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->local_id:Ljava/lang/String;

    .line 128
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->user_id:Ljava/lang/Long;

    .line 129
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->inactive_expire_seconds:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->inactive_expire_seconds:Ljava/lang/Integer;

    .line 130
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->last_active_timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->last_active_timestamp:Ljava/lang/Integer;

    .line 131
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->create_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->create_time:Ljava/lang/Integer;

    .line 132
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->type:Lcom/didi/frame/protobuffer/RelationType;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->type:Lcom/didi/frame/protobuffer/RelationType;

    .line 133
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;->biz_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->biz_type:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public biz_type(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;
    .locals 0
    .parameter "biz_type"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->biz_type:Ljava/lang/Integer;

    .line 189
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/PeerCoordinateRelation;
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->checkRequiredFields()V

    .line 195
    new-instance v0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation;-><init>(Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;Lcom/didi/frame/protobuffer/PeerCoordinateRelation$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->build()Lcom/didi/frame/protobuffer/PeerCoordinateRelation;

    move-result-object v0

    return-object v0
.end method

.method public create_time(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;
    .locals 0
    .parameter "create_time"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->create_time:Ljava/lang/Integer;

    .line 173
    return-object p0
.end method

.method public inactive_expire_seconds(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;
    .locals 0
    .parameter "inactive_expire_seconds"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->inactive_expire_seconds:Ljava/lang/Integer;

    .line 157
    return-object p0
.end method

.method public last_active_timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;
    .locals 0
    .parameter "last_active_timestamp"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->last_active_timestamp:Ljava/lang/Integer;

    .line 165
    return-object p0
.end method

.method public local_id(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;
    .locals 0
    .parameter "local_id"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->local_id:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public type(Lcom/didi/frame/protobuffer/RelationType;)Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;
    .locals 0
    .parameter "type"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->type:Lcom/didi/frame/protobuffer/RelationType;

    .line 181
    return-object p0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PeerCoordinateRelation$Builder;->user_id:Ljava/lang/Long;

    .line 149
    return-object p0
.end method

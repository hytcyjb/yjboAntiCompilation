.class public final Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushSvrMultiReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;",
        ">;"
    }
.end annotation


# instance fields
.field public old_role:Lcom/didi/frame/protobuffer/OldRole;

.field public phone_num:Ljava/lang/String;

.field public role:Ljava/lang/Integer;

.field public user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 265
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 269
    if-nez p1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    .line 271
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->phone_num:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->phone_num:Ljava/lang/String;

    .line 272
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->user_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->user_id:Ljava/lang/Long;

    .line 273
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->role:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->role:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;-><init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;Lcom/didi/frame/protobuffer/PushSvrMultiReq$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->build()Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;

    move-result-object v0

    return-object v0
.end method

.method public old_role(Lcom/didi/frame/protobuffer/OldRole;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;
    .locals 0
    .parameter "old_role"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    .line 281
    return-object p0
.end method

.method public phone_num(Ljava/lang/String;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;
    .locals 0
    .parameter "phone_num"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->phone_num:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public role(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;
    .locals 0
    .parameter "role"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->role:Ljava/lang/Integer;

    .line 302
    return-object p0
.end method

.method public user_id(Ljava/lang/Long;)Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;
    .locals 0
    .parameter "user_id"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->user_id:Ljava/lang/Long;

    .line 297
    return-object p0
.end method

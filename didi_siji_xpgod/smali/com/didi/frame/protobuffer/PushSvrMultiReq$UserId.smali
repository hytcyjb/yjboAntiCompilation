.class public final Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;
.super Lcom/squareup/wire/Message;
.source "PushSvrMultiReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/PushSvrMultiReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_OLD_ROLE:Lcom/didi/frame/protobuffer/OldRole; = null

.field public static final DEFAULT_PHONE_NUM:Ljava/lang/String; = ""

.field public static final DEFAULT_ROLE:Ljava/lang/Integer;

.field public static final DEFAULT_USER_ID:Ljava/lang/Long;


# instance fields
.field public final old_role:Lcom/didi/frame/protobuffer/OldRole;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final phone_num:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final role:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final user_id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/didi/frame/protobuffer/OldRole;->OldUnknown:Lcom/didi/frame/protobuffer/OldRole;

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->DEFAULT_OLD_ROLE:Lcom/didi/frame/protobuffer/OldRole;

    .line 197
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->DEFAULT_USER_ID:Ljava/lang/Long;

    .line 198
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->DEFAULT_ROLE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/OldRole;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0
    .parameter "old_role"
    .parameter "phone_num"
    .parameter "user_id"
    .parameter "role"

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    .line 223
    iput-object p2, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->phone_num:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->user_id:Ljava/lang/Long;

    .line 225
    iput-object p4, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->role:Ljava/lang/Integer;

    .line 226
    return-void
.end method

.method private constructor <init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 229
    iget-object v0, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    iget-object v1, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->phone_num:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->user_id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;->role:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;-><init>(Lcom/didi/frame/protobuffer/OldRole;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    .line 231
    return-void
.end method

.method synthetic constructor <init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;Lcom/didi/frame/protobuffer/PushSvrMultiReq$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;-><init>(Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    if-ne p1, p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    instance-of v3, p1, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 237
    check-cast v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;

    .line 238
    .local v0, o:Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;
    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->phone_num:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->phone_num:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->user_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->user_id:Ljava/lang/Long;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->role:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->role:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v4}, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 246
    iget v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->hashCode:I

    .line 247
    .local v0, result:I
    if-nez v0, :cond_1

    .line 248
    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->old_role:Lcom/didi/frame/protobuffer/OldRole;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/OldRole;->hashCode()I

    move-result v0

    .line 249
    :goto_0
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->phone_num:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->phone_num:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 250
    mul-int/lit8 v3, v0, 0x25

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->user_id:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 251
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->role:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->role:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 252
    iput v0, p0, Lcom/didi/frame/protobuffer/PushSvrMultiReq$UserId;->hashCode:I

    .line 254
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 248
    goto :goto_0

    :cond_3
    move v2, v1

    .line 249
    goto :goto_1

    :cond_4
    move v2, v1

    .line 250
    goto :goto_2
.end method

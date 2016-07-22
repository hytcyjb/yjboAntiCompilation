.class public final enum Lcom/didi/frame/protobuffer/NodeType;
.super Ljava/lang/Enum;
.source "NodeType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/NodeType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeApp:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeAuthSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeCdntSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeCollectSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeConnMasterSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeConnSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeDbSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeDispatchSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeFileSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeMax:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeMessageSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeMin:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypePushSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeRepushSvr:Lcom/didi/frame/protobuffer/NodeType;

.field public static final enum kNodeTypeSessionSvr:Lcom/didi/frame/protobuffer/NodeType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeMin"

    invoke-direct {v0, v1, v4, v4}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeMin:Lcom/didi/frame/protobuffer/NodeType;

    .line 16
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeApp"

    invoke-direct {v0, v1, v5, v5}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeApp:Lcom/didi/frame/protobuffer/NodeType;

    .line 20
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeConnSvr"

    invoke-direct {v0, v1, v6, v6}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeConnSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 24
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeConnMasterSvr"

    invoke-direct {v0, v1, v7, v7}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeConnMasterSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 28
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeCdntSvr"

    invoke-direct {v0, v1, v8, v8}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeCdntSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 32
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeAuthSvr"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeAuthSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 36
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypePushSvr"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypePushSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 40
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeCollectSvr"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeCollectSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 44
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeDispatchSvr"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeDispatchSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 48
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeMessageSvr"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeMessageSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 52
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeSessionSvr"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeSessionSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 56
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeFileSvr"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeFileSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 60
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeRepushSvr"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeRepushSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 64
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeDbSvr"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeDbSvr:Lcom/didi/frame/protobuffer/NodeType;

    .line 68
    new-instance v0, Lcom/didi/frame/protobuffer/NodeType;

    const-string v1, "kNodeTypeMax"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/frame/protobuffer/NodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeMax:Lcom/didi/frame/protobuffer/NodeType;

    .line 7
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/didi/frame/protobuffer/NodeType;

    sget-object v1, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeMin:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeApp:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeConnSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeConnMasterSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeCdntSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeAuthSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypePushSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeCollectSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeDispatchSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeMessageSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeSessionSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeFileSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeRepushSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeDbSvr:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/didi/frame/protobuffer/NodeType;->kNodeTypeMax:Lcom/didi/frame/protobuffer/NodeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/frame/protobuffer/NodeType;->$VALUES:[Lcom/didi/frame/protobuffer/NodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/didi/frame/protobuffer/NodeType;->value:I

    .line 74
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/NodeType;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/NodeType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/NodeType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/NodeType;->$VALUES:[Lcom/didi/frame/protobuffer/NodeType;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/NodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/NodeType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/didi/frame/protobuffer/NodeType;->value:I

    return v0
.end method

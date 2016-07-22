.class public final enum Lcom/didi/frame/protobuffer/Constants;
.super Ljava/lang/Enum;
.source "Constants.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/Constants;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/Constants;

.field public static final enum kMagic:Lcom/didi/frame/protobuffer/Constants;

.field public static final enum kNodeTypeMask:Lcom/didi/frame/protobuffer/Constants;

.field public static final enum kNodeTypeShiftBits:Lcom/didi/frame/protobuffer/Constants;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/didi/frame/protobuffer/Constants;

    const-string v1, "kMagic"

    const/16 v2, 0x5854

    invoke-direct {v0, v1, v3, v2}, Lcom/didi/frame/protobuffer/Constants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Constants;->kMagic:Lcom/didi/frame/protobuffer/Constants;

    .line 14
    new-instance v0, Lcom/didi/frame/protobuffer/Constants;

    const-string v1, "kNodeTypeMask"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, Lcom/didi/frame/protobuffer/Constants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Constants;->kNodeTypeMask:Lcom/didi/frame/protobuffer/Constants;

    .line 18
    new-instance v0, Lcom/didi/frame/protobuffer/Constants;

    const-string v1, "kNodeTypeShiftBits"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v5, v2}, Lcom/didi/frame/protobuffer/Constants;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Constants;->kNodeTypeShiftBits:Lcom/didi/frame/protobuffer/Constants;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/frame/protobuffer/Constants;

    sget-object v1, Lcom/didi/frame/protobuffer/Constants;->kMagic:Lcom/didi/frame/protobuffer/Constants;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/protobuffer/Constants;->kNodeTypeMask:Lcom/didi/frame/protobuffer/Constants;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/frame/protobuffer/Constants;->kNodeTypeShiftBits:Lcom/didi/frame/protobuffer/Constants;

    aput-object v1, v0, v5

    sput-object v0, Lcom/didi/frame/protobuffer/Constants;->$VALUES:[Lcom/didi/frame/protobuffer/Constants;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/didi/frame/protobuffer/Constants;->value:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/Constants;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/Constants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/Constants;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/Constants;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/Constants;->$VALUES:[Lcom/didi/frame/protobuffer/Constants;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/Constants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/Constants;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/didi/frame/protobuffer/Constants;->value:I

    return v0
.end method

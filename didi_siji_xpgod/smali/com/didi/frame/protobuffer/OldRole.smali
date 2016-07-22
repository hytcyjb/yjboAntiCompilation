.class public final enum Lcom/didi/frame/protobuffer/OldRole;
.super Ljava/lang/Enum;
.source "OldRole.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/OldRole;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/OldRole;

.field public static final enum OldDriver:Lcom/didi/frame/protobuffer/OldRole;

.field public static final enum OldPassenger:Lcom/didi/frame/protobuffer/OldRole;

.field public static final enum OldPilot:Lcom/didi/frame/protobuffer/OldRole;

.field public static final enum OldUnknown:Lcom/didi/frame/protobuffer/OldRole;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/didi/frame/protobuffer/OldRole;

    const-string v1, "OldUnknown"

    invoke-direct {v0, v1, v2, v2}, Lcom/didi/frame/protobuffer/OldRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/OldRole;->OldUnknown:Lcom/didi/frame/protobuffer/OldRole;

    .line 10
    new-instance v0, Lcom/didi/frame/protobuffer/OldRole;

    const-string v1, "OldDriver"

    invoke-direct {v0, v1, v3, v3}, Lcom/didi/frame/protobuffer/OldRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/OldRole;->OldDriver:Lcom/didi/frame/protobuffer/OldRole;

    .line 11
    new-instance v0, Lcom/didi/frame/protobuffer/OldRole;

    const-string v1, "OldPassenger"

    invoke-direct {v0, v1, v4, v4}, Lcom/didi/frame/protobuffer/OldRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/OldRole;->OldPassenger:Lcom/didi/frame/protobuffer/OldRole;

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/OldRole;

    const-string v1, "OldPilot"

    invoke-direct {v0, v1, v5, v5}, Lcom/didi/frame/protobuffer/OldRole;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/OldRole;->OldPilot:Lcom/didi/frame/protobuffer/OldRole;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/didi/frame/protobuffer/OldRole;

    sget-object v1, Lcom/didi/frame/protobuffer/OldRole;->OldUnknown:Lcom/didi/frame/protobuffer/OldRole;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/protobuffer/OldRole;->OldDriver:Lcom/didi/frame/protobuffer/OldRole;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/protobuffer/OldRole;->OldPassenger:Lcom/didi/frame/protobuffer/OldRole;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/frame/protobuffer/OldRole;->OldPilot:Lcom/didi/frame/protobuffer/OldRole;

    aput-object v1, v0, v5

    sput-object v0, Lcom/didi/frame/protobuffer/OldRole;->$VALUES:[Lcom/didi/frame/protobuffer/OldRole;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/didi/frame/protobuffer/OldRole;->value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/OldRole;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/OldRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/OldRole;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/OldRole;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/OldRole;->$VALUES:[Lcom/didi/frame/protobuffer/OldRole;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/OldRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/OldRole;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/didi/frame/protobuffer/OldRole;->value:I

    return v0
.end method

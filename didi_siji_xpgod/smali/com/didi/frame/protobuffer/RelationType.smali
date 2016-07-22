.class public final enum Lcom/didi/frame/protobuffer/RelationType;
.super Ljava/lang/Enum;
.source "RelationType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/RelationType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/RelationType;

.field public static final enum kRelationTypeRealTime:Lcom/didi/frame/protobuffer/RelationType;

.field public static final enum kRelationTypeReservation:Lcom/didi/frame/protobuffer/RelationType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/RelationType;

    const-string v1, "kRelationTypeRealTime"

    invoke-direct {v0, v1, v2, v2}, Lcom/didi/frame/protobuffer/RelationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RelationType;->kRelationTypeRealTime:Lcom/didi/frame/protobuffer/RelationType;

    .line 16
    new-instance v0, Lcom/didi/frame/protobuffer/RelationType;

    const-string v1, "kRelationTypeReservation"

    invoke-direct {v0, v1, v3, v3}, Lcom/didi/frame/protobuffer/RelationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/RelationType;->kRelationTypeReservation:Lcom/didi/frame/protobuffer/RelationType;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/didi/frame/protobuffer/RelationType;

    sget-object v1, Lcom/didi/frame/protobuffer/RelationType;->kRelationTypeRealTime:Lcom/didi/frame/protobuffer/RelationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/frame/protobuffer/RelationType;->kRelationTypeReservation:Lcom/didi/frame/protobuffer/RelationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/didi/frame/protobuffer/RelationType;->$VALUES:[Lcom/didi/frame/protobuffer/RelationType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/didi/frame/protobuffer/RelationType;->value:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/RelationType;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/RelationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/RelationType;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/RelationType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/RelationType;->$VALUES:[Lcom/didi/frame/protobuffer/RelationType;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/RelationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/RelationType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/didi/frame/protobuffer/RelationType;->value:I

    return v0
.end method

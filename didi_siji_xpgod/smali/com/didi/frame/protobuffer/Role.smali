.class public final enum Lcom/didi/frame/protobuffer/Role;
.super Ljava/lang/Enum;
.source "Role.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/frame/protobuffer/Role;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/frame/protobuffer/Role;

.field public static final enum Driver:Lcom/didi/frame/protobuffer/Role;

.field public static final enum ESPassenger:Lcom/didi/frame/protobuffer/Role;

.field public static final enum Passenger:Lcom/didi/frame/protobuffer/Role;

.field public static final enum Pilot:Lcom/didi/frame/protobuffer/Role;

.field public static final enum WaliDriver:Lcom/didi/frame/protobuffer/Role;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/didi/frame/protobuffer/Role;

    const-string v1, "Driver"

    invoke-direct {v0, v1, v3, v3}, Lcom/didi/frame/protobuffer/Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Role;->Driver:Lcom/didi/frame/protobuffer/Role;

    .line 10
    new-instance v0, Lcom/didi/frame/protobuffer/Role;

    const-string v1, "Passenger"

    invoke-direct {v0, v1, v4, v4}, Lcom/didi/frame/protobuffer/Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Role;->Passenger:Lcom/didi/frame/protobuffer/Role;

    .line 11
    new-instance v0, Lcom/didi/frame/protobuffer/Role;

    const-string v1, "Pilot"

    invoke-direct {v0, v1, v5, v5}, Lcom/didi/frame/protobuffer/Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Role;->Pilot:Lcom/didi/frame/protobuffer/Role;

    .line 12
    new-instance v0, Lcom/didi/frame/protobuffer/Role;

    const-string v1, "ESPassenger"

    invoke-direct {v0, v1, v6, v6}, Lcom/didi/frame/protobuffer/Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Role;->ESPassenger:Lcom/didi/frame/protobuffer/Role;

    .line 13
    new-instance v0, Lcom/didi/frame/protobuffer/Role;

    const-string v1, "WaliDriver"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lcom/didi/frame/protobuffer/Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/frame/protobuffer/Role;->WaliDriver:Lcom/didi/frame/protobuffer/Role;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/didi/frame/protobuffer/Role;

    sget-object v1, Lcom/didi/frame/protobuffer/Role;->Driver:Lcom/didi/frame/protobuffer/Role;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/frame/protobuffer/Role;->Passenger:Lcom/didi/frame/protobuffer/Role;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/frame/protobuffer/Role;->Pilot:Lcom/didi/frame/protobuffer/Role;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/frame/protobuffer/Role;->ESPassenger:Lcom/didi/frame/protobuffer/Role;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/frame/protobuffer/Role;->WaliDriver:Lcom/didi/frame/protobuffer/Role;

    aput-object v1, v0, v7

    sput-object v0, Lcom/didi/frame/protobuffer/Role;->$VALUES:[Lcom/didi/frame/protobuffer/Role;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/didi/frame/protobuffer/Role;->value:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/frame/protobuffer/Role;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/didi/frame/protobuffer/Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/protobuffer/Role;

    return-object v0
.end method

.method public static values()[Lcom/didi/frame/protobuffer/Role;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/didi/frame/protobuffer/Role;->$VALUES:[Lcom/didi/frame/protobuffer/Role;

    invoke-virtual {v0}, [Lcom/didi/frame/protobuffer/Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/frame/protobuffer/Role;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/didi/frame/protobuffer/Role;->value:I

    return v0
.end method

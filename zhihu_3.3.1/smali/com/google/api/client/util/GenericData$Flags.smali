.class public final enum Lcom/google/api/client/util/GenericData$Flags;
.super Ljava/lang/Enum;
.source "GenericData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/util/GenericData$Flags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/util/GenericData$Flags;

.field public static final enum IGNORE_CASE:Lcom/google/api/client/util/GenericData$Flags;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/google/api/client/util/GenericData$Flags;

    const-string v1, "IGNORE_CASE"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/GenericData$Flags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/util/GenericData$Flags;->IGNORE_CASE:Lcom/google/api/client/util/GenericData$Flags;

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/api/client/util/GenericData$Flags;

    sget-object v1, Lcom/google/api/client/util/GenericData$Flags;->IGNORE_CASE:Lcom/google/api/client/util/GenericData$Flags;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/api/client/util/GenericData$Flags;->$VALUES:[Lcom/google/api/client/util/GenericData$Flags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/util/GenericData$Flags;
    .locals 1
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/google/api/client/util/GenericData$Flags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/GenericData$Flags;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/util/GenericData$Flags;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/api/client/util/GenericData$Flags;->$VALUES:[Lcom/google/api/client/util/GenericData$Flags;

    invoke-virtual {v0}, [Lcom/google/api/client/util/GenericData$Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/util/GenericData$Flags;

    return-object v0
.end method

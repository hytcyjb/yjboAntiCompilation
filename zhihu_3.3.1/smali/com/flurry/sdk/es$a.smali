.class public final enum Lcom/flurry/sdk/es$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/es$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/es$a;

.field public static final enum b:Lcom/flurry/sdk/es$a;

.field public static final enum c:Lcom/flurry/sdk/es$a;

.field private static final synthetic e:[Lcom/flurry/sdk/es$a;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/flurry/sdk/es$a;

    const-string v1, "NONE_OR_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/es$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/es$a;->a:Lcom/flurry/sdk/es$a;

    .line 43
    new-instance v0, Lcom/flurry/sdk/es$a;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3, v3}, Lcom/flurry/sdk/es$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/es$a;->b:Lcom/flurry/sdk/es$a;

    .line 44
    new-instance v0, Lcom/flurry/sdk/es$a;

    const-string v1, "CELL"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/sdk/es$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/es$a;->c:Lcom/flurry/sdk/es$a;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/es$a;

    sget-object v1, Lcom/flurry/sdk/es$a;->a:Lcom/flurry/sdk/es$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/es$a;->b:Lcom/flurry/sdk/es$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/es$a;->c:Lcom/flurry/sdk/es$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/sdk/es$a;->e:[Lcom/flurry/sdk/es$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/flurry/sdk/es$a;->d:I

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/es$a;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/flurry/sdk/es$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/es$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/es$a;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/flurry/sdk/es$a;->e:[Lcom/flurry/sdk/es$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/es$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/es$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/flurry/sdk/es$a;->d:I

    return v0
.end method

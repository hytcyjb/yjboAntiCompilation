.class final enum Lcom/google/android/gms/analytics/r$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/analytics/r$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum yH:Lcom/google/android/gms/analytics/r$a;

.field public static final enum yI:Lcom/google/android/gms/analytics/r$a;

.field public static final enum yJ:Lcom/google/android/gms/analytics/r$a;

.field public static final enum yK:Lcom/google/android/gms/analytics/r$a;

.field public static final enum yL:Lcom/google/android/gms/analytics/r$a;

.field public static final enum yM:Lcom/google/android/gms/analytics/r$a;

.field public static final enum yN:Lcom/google/android/gms/analytics/r$a;

.field private static final synthetic yO:[Lcom/google/android/gms/analytics/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/analytics/r$a;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/analytics/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/r$a;->yH:Lcom/google/android/gms/analytics/r$a;

    new-instance v0, Lcom/google/android/gms/analytics/r$a;

    const-string v1, "CONNECTED_SERVICE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/analytics/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/r$a;->yI:Lcom/google/android/gms/analytics/r$a;

    new-instance v0, Lcom/google/android/gms/analytics/r$a;

    const-string v1, "CONNECTED_LOCAL"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/analytics/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/r$a;->yJ:Lcom/google/android/gms/analytics/r$a;

    new-instance v0, Lcom/google/android/gms/analytics/r$a;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/analytics/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/r$a;->yK:Lcom/google/android/gms/analytics/r$a;

    new-instance v0, Lcom/google/android/gms/analytics/r$a;

    const-string v1, "PENDING_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/analytics/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/r$a;->yL:Lcom/google/android/gms/analytics/r$a;

    new-instance v0, Lcom/google/android/gms/analytics/r$a;

    const-string v1, "PENDING_DISCONNECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/r$a;->yM:Lcom/google/android/gms/analytics/r$a;

    new-instance v0, Lcom/google/android/gms/analytics/r$a;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/r$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/r$a;->yN:Lcom/google/android/gms/analytics/r$a;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/gms/analytics/r$a;

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yH:Lcom/google/android/gms/analytics/r$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yI:Lcom/google/android/gms/analytics/r$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yJ:Lcom/google/android/gms/analytics/r$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yK:Lcom/google/android/gms/analytics/r$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->yL:Lcom/google/android/gms/analytics/r$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/analytics/r$a;->yM:Lcom/google/android/gms/analytics/r$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/analytics/r$a;->yN:Lcom/google/android/gms/analytics/r$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/analytics/r$a;->yO:[Lcom/google/android/gms/analytics/r$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/analytics/r$a;
    .locals 1

    const-class v0, Lcom/google/android/gms/analytics/r$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/r$a;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/analytics/r$a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/r$a;->yO:[Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/analytics/r$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/analytics/r$a;

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/mt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/mu;

.field public static final aic:Lcom/google/android/gms/internal/mt;

.field public static final aid:Lcom/google/android/gms/internal/mt;

.field public static final aie:Lcom/google/android/gms/internal/mt;

.field public static final aif:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/mt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BR:I

.field final aig:I

.field final uO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v0, "test_type"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mt;->y(Ljava/lang/String;I)Lcom/google/android/gms/internal/mt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mt;->aic:Lcom/google/android/gms/internal/mt;

    const-string v0, "trellis_store"

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/mt;->y(Ljava/lang/String;I)Lcom/google/android/gms/internal/mt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mt;->aid:Lcom/google/android/gms/internal/mt;

    const-string v0, "labeled_place"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mt;->y(Ljava/lang/String;I)Lcom/google/android/gms/internal/mt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mt;->aie:Lcom/google/android/gms/internal/mt;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/gms/internal/mt;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/mt;->aic:Lcom/google/android/gms/internal/mt;

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/mt;->aid:Lcom/google/android/gms/internal/mt;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/android/gms/internal/mt;->aie:Lcom/google/android/gms/internal/mt;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mt;->aif:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/internal/mu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mt;->CREATOR:Lcom/google/android/gms/internal/mu;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->aZ(Ljava/lang/String;)Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/internal/mt;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mt;->uO:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/mt;->aig:I

    return-void
.end method

.method private static y(Ljava/lang/String;I)Lcom/google/android/gms/internal/mt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/mt;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mt;->CREATOR:Lcom/google/android/gms/internal/mu;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/mt;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/mt;

    iget-object v2, p0, Lcom/google/android/gms/internal/mt;->uO:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/mt;->uO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/mt;->aig:I

    iget v3, p1, Lcom/google/android/gms/internal/mt;->aig:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mt;->uO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mt;->uO:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mt;->CREATOR:Lcom/google/android/gms/internal/mu;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/internal/mt;Landroid/os/Parcel;I)V

    return-void
.end method

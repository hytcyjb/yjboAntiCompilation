.class public Lcom/google/android/gms/fitness/request/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/w$1;,
        Lcom/google/android/gms/fitness/request/w$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field private final St:Lcom/google/android/gms/fitness/data/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/x;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/w;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/w;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/w;->St:Lcom/google/android/gms/fitness/data/Session;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/request/w$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/request/w;->BR:I

    invoke-static {p1}, Lcom/google/android/gms/fitness/request/w$a;->a(Lcom/google/android/gms/fitness/request/w$a;)Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/w;->St:Lcom/google/android/gms/fitness/data/Session;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/w$a;Lcom/google/android/gms/fitness/request/w$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/w;-><init>(Lcom/google/android/gms/fitness/request/w$a;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/request/w;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/w;->St:Lcom/google/android/gms/fitness/data/Session;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/w;->St:Lcom/google/android/gms/fitness/data/Session;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/w;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/w;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/w;->a(Lcom/google/android/gms/fitness/request/w;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSession()Lcom/google/android/gms/fitness/data/Session;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/w;->St:Lcom/google/android/gms/fitness/data/Session;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/request/w;->BR:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/w;->St:Lcom/google/android/gms/fitness/data/Session;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/n;->h(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "session"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/w;->St:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/x;->a(Lcom/google/android/gms/fitness/request/w;Landroid/os/Parcel;I)V

    return-void
.end method

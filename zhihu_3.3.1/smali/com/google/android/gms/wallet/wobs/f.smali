.class public final Lcom/google/android/gms/wallet/wobs/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field atc:Lcom/google/android/gms/wallet/wobs/l;

.field auC:Lcom/google/android/gms/wallet/wobs/g;

.field label:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/i;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/f;->BR:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/wallet/wobs/g;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/f;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/f;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/f;->auC:Lcom/google/android/gms/wallet/wobs/g;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/f;->type:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/f;->atc:Lcom/google/android/gms/wallet/wobs/l;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/f;->BR:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/i;->a(Lcom/google/android/gms/wallet/wobs/f;Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lcom/google/android/gms/wallet/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BR:I

.field asA:Lcom/google/android/gms/wallet/OfferWalletObject;

.field asz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/e;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/d;->BR:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/wallet/LoyaltyWalletObject;Lcom/google/android/gms/wallet/OfferWalletObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/d;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/d;->asz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p3, p0, Lcom/google/android/gms/wallet/d;->asA:Lcom/google/android/gms/wallet/OfferWalletObject;

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

    iget v0, p0, Lcom/google/android/gms/wallet/d;->BR:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/e;->a(Lcom/google/android/gms/wallet/d;Landroid/os/Parcel;I)V

    return-void
.end method

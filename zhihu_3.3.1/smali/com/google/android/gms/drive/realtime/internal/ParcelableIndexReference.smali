.class public Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BR:I

.field final Rp:Ljava/lang/String;

.field final Rq:Z

.field final mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/q;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->Rp:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->mIndex:I

    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->Rq:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/q;->a(Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;Landroid/os/Parcel;I)V

    return-void
.end method

.class public Lcom/google/android/gms/drive/internal/DeleteResourceRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/DeleteResourceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BR:I

.field final Od:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/m;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;->BR:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/DeleteResourceRequest;->Od:Lcom/google/android/gms/drive/DriveId;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/m;->a(Lcom/google/android/gms/drive/internal/DeleteResourceRequest;Landroid/os/Parcel;I)V

    return-void
.end method

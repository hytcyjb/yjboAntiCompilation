.class public Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final BR:I

.field final MW:Lcom/google/android/gms/drive/DriveId;

.field final Ob:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLcom/google/android/gms/drive/DriveId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->BR:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->Ob:J

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;->MW:Lcom/google/android/gms/drive/DriveId;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/b;->a(Lcom/google/android/gms/drive/internal/AuthorizeAccessRequest;Landroid/os/Parcel;I)V

    return-void
.end method

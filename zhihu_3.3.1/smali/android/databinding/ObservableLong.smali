.class public Landroid/databinding/ObservableLong;
.super Landroid/databinding/a;
.source "ObservableLong.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/databinding/ObservableLong;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroid/databinding/ObservableLong$1;

    invoke-direct {v0}, Landroid/databinding/ObservableLong$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableLong;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/databinding/a;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/databinding/a;-><init>()V

    .line 47
    iput-wide p1, p0, Landroid/databinding/ObservableLong;->mValue:J

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public get()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Landroid/databinding/ObservableLong;->mValue:J

    return-wide v0
.end method

.method public set(J)V
    .locals 3
    .parameter

    .prologue
    .line 67
    iget-wide v0, p0, Landroid/databinding/ObservableLong;->mValue:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 68
    iput-wide p1, p0, Landroid/databinding/ObservableLong;->mValue:J

    .line 69
    invoke-virtual {p0}, Landroid/databinding/ObservableLong;->notifyChange()V

    .line 71
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Landroid/databinding/ObservableLong;->mValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    return-void
.end method

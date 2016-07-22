.class public Lcom/zhihu/android/app/util/Agent;
.super Ljava/lang/Object;
.source "Agent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zhihu/android/app/util/Agent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Intent;

.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/zhihu/android/app/util/Agent$1;

    invoke-direct {v0}, Lcom/zhihu/android/app/util/Agent$1;-><init>()V

    sput-object v0, Lcom/zhihu/android/app/util/Agent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/zhihu/android/app/util/Agent;->a:Landroid/content/Intent;

    .line 35
    iput p2, p0, Lcom/zhihu/android/app/util/Agent;->b:I

    .line 36
    iput-boolean p3, p0, Lcom/zhihu/android/app/util/Agent;->c:Z

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/zhihu/android/app/util/Agent;->a:Landroid/content/Intent;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zhihu/android/app/util/Agent;->b:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zhihu/android/app/util/Agent;->c:Z

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zhihu/android/app/util/Agent;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/zhihu/android/app/util/Agent;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/zhihu/android/app/util/Agent;->c:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/zhihu/android/app/util/Agent;->a:Landroid/content/Intent;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    iget v1, p0, Lcom/zhihu/android/app/util/Agent;->b:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-boolean v1, p0, Lcom/zhihu/android/app/util/Agent;->c:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    return-void
.end method

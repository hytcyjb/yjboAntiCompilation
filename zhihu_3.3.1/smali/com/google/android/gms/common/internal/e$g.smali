.class public final Lcom/google/android/gms/common/internal/e$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final LJ:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/e$g;->LJ:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/common/internal/e$g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$g;->LJ:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    check-cast p1, Lcom/google/android/gms/common/internal/e$g;

    iget-object v1, p1, Lcom/google/android/gms/common/internal/e$g;->LJ:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$g;->LJ:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e$g;->LJ:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

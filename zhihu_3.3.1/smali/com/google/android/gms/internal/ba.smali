.class public final Lcom/google/android/gms/internal/ba;
.super Lcom/google/android/gms/internal/bf$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation


# instance fields
.field private final oi:Lcom/google/android/gms/ads/doubleclick/AppEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bf$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ba;->oi:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-void
.end method


# virtual methods
.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->oi:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/doubleclick/AppEventListener;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/google/android/gms/internal/kd$g;
.super Lcom/google/android/gms/drive/metadata/internal/l;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
.implements Lcom/google/android/gms/drive/metadata/SortableMetadataField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/l;",
        "Lcom/google/android/gms/drive/metadata/SearchableMetadataField",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/drive/metadata/SortableMetadataField",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/l;-><init>(Ljava/lang/String;I)V

    return-void
.end method

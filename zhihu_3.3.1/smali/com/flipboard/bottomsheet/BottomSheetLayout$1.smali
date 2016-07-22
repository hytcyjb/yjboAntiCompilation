.class final Lcom/flipboard/bottomsheet/BottomSheetLayout$1;
.super Landroid/util/Property;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/flipboard/bottomsheet/BottomSheetLayout;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/lang/Float;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Ljava/lang/Float;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;F)V

    .line 41
    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {p0, p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout$1;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/flipboard/bottomsheet/BottomSheetLayout;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/flipboard/bottomsheet/BottomSheetLayout$1;->a(Lcom/flipboard/bottomsheet/BottomSheetLayout;Ljava/lang/Float;)V

    return-void
.end method

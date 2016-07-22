.class Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$3;
.super Ljava/lang/Object;
.source "TaxiWaitForArrivalPayView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$3;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v6, 0x4

    .line 758
    iget-object v5, p0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView$3;->this$0:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;

    #getter for: Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->mPriceEdit:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;->access$100(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalPayView;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, text:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 761
    const-string p1, ""

    .line 788
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 763
    .restart local p1
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 767
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 768
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 769
    .local v4, textLen:I
    if-lt v4, v6, :cond_0

    if-ne v4, v6, :cond_2

    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    const-string p1, ""

    goto :goto_0

    .line 772
    .end local v4           #textLen:I
    :cond_3
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 773
    const-string p1, ""

    goto :goto_0

    .line 776
    :cond_4
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 777
    .local v0, dotIndex:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 778
    .local v2, dotSuffixLen:I
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 780
    .local v1, dotPrefixLen:I
    if-gt p6, v0, :cond_5

    if-lt v1, v6, :cond_5

    .line 781
    const-string p1, ""

    goto :goto_0

    .line 784
    :cond_5
    if-le p6, v0, :cond_0

    const/4 v5, 0x3

    if-lt v2, v5, :cond_0

    .line 785
    const-string p1, ""

    goto :goto_0
.end method

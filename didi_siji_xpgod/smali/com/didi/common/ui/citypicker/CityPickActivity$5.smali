.class Lcom/didi/common/ui/citypicker/CityPickActivity$5;
.super Ljava/lang/Object;
.source "CityPickActivity.java"

# interfaces
.implements Lcom/didi/common/ui/citypicker/SideBar$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/citypicker/CityPickActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$5;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 190
    const-string v2, "star"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$5;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->hotCityList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$400(Lcom/didi/common/ui/citypicker/CityPickActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getTop()I

    move-result v1

    .line 192
    .local v1, top:I
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$5;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$500(Lcom/didi/common/ui/citypicker/CityPickActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 196
    .end local v1           #top:I
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$5;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$600(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lcom/didi/common/ui/citypicker/SortAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$5;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityadapter:Lcom/didi/common/ui/citypicker/SortAdapter;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$600(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lcom/didi/common/ui/citypicker/SortAdapter;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/citypicker/SortAdapter;->getPositionForSection(I)I

    move-result v0

    .line 198
    .local v0, position:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$5;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$700(Lcom/didi/common/ui/citypicker/CityPickActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 200
    .restart local v1       #top:I
    iget-object v2, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$5;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$500(Lcom/didi/common/ui/citypicker/CityPickActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$5;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->allCityList:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$700(Lcom/didi/common/ui/citypicker/CityPickActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 203
    .end local v0           #position:I
    .end local v1           #top:I
    :cond_1
    return-void
.end method
